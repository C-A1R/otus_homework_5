
#include <memory>
#include <iterator>
#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <cassert>


/**
 * @brief Разреженная бесконечная матрица
 * 
 * @tparam T - тип элементов
 * @tparam defaultValue - значение по умолчанию для элементов
 */
template<typename T, T defaultValue>
class Matrix
{
    /**
     * @brief Индекс матрицы
     * 
     * Индекс матрицы хранится в виде вектора, в котором по порядку идут индексы по уровням матрицы
     */
    class Index
    {
        std::vector<std::size_t> _level_indexes;
    public:
        Index() = default;
        Index(const Index &other)
        {
            _level_indexes = other._level_indexes;
        }

        void addLevelIndex(const size_t i)
        {
            _level_indexes.emplace_back(i);
        }
        std::string toString() const
        {
            assert (_level_indexes.size() > 0);
            std::string str = "[" + std::to_string(_level_indexes.front());
            for (auto i =  _level_indexes.cbegin() + 1; i != _level_indexes.cend(); i++)
            {
                str += ("," + std::to_string(*i));
            }
            str += "]";
            return str;
        }

        void operator=(const Index &other)
        {
            _level_indexes = other._level_indexes;
        }
        friend bool operator==(const Index &l, const Index &r)
        {
            return l._level_indexes == r._level_indexes;
        }
        friend std::ostream &operator<<(std::ostream &stream, const Index &index)
        {
            for (const auto &i : index._level_indexes)
            {
                stream << i;
            }
            return stream;
        }
    };


    /**
     * @brief Элемент матрицы
     */
    class Element
    {
        Matrix<T, defaultValue> *_matrix {nullptr};
        Index _index;
        T _value {defaultValue};
        
    public:
        Element() = default;
        Element(const Element &other)
        {
            _matrix = other._matrix;
            _index = other._index;
            _value = other._value;
        }
        Element(Matrix<T, defaultValue> *matrix, const Index &index)
            : _matrix{matrix}, _index{index}
        {
        }

        bool indexEqual(const Index &index) const
        {
            return _index == index;
        }

        Element &operator[](const size_t i)
        {
            auto newIndex = Index(_index);
            newIndex.addLevelIndex(i);
            return _matrix->find(newIndex);
        }
        void operator=(const Element &other)
        {
            _matrix = other._matrix;
            _index = other._index;
            _value = other._value;
        }
        T &operator=(const T &value)
        {
            if (_value == defaultValue && value == defaultValue)
            {
                return _value;
            }
            _value = value;
            _matrix->addElement(*this);
            return _value;
        }

        friend std::ostream &operator<<(std::ostream &stream, const Element &element)
        {
            stream << element._value;
            return stream;
        }
        bool operator==(const T &val)
        {
            return _value == val;
        }

        std::string toString() const
        {
            return _index.toString() + " " + std::to_string(_value);
        }
    };


    std::vector<Element> _elements;
    Element defaultElement;

public:
    Matrix() {}

    Element &operator[](const size_t i)
    {
        Index ind;
        ind.addLevelIndex(i);
        return find(ind);
    } 

    /**
     * @brief Количество заполненных элементов
     */
    size_t size() const
    {
        return _elements.size();
    }

    void printBusy() const
    {
        for (const auto &e : _elements)
        {
            std::cout << e.toString() << std::endl;
        }
    }

    typename std::vector<Element>::iterator begin()
    {
        return _elements.begin();
    }
    typename std::vector<Element>::iterator end()
    {
        return _elements.end();
    }
    typename std::vector<Element>::const_iterator cbegin()
    {
        return _elements.cbegin();
    }
    typename std::vector<Element>::const_iterator cend()
    {
        return _elements.cend();
    }

private:
    Element &find(const Index &index)
    {
        auto iter = std::find_if(_elements.begin(), _elements.end(), [&index](const Element &el) -> bool
        {
            return el.indexEqual(index);
        });
        if (iter != _elements.end())
        {
            return *iter;
        }
        defaultElement = Element(this, index);
        return defaultElement;
    }

    void addElement(const Element &element)
    {
        _elements.push_back(element);
    }
};