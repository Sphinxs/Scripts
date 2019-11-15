#include <iostream>

#include <vector>

using namespace std;

template<typename T>
void showItem(const T item)
{
    cout << item << endl;
}

// Void could be replaced by auto or
// typedef void(*function)(), where
// the 'function' keyword becomes
// the signature to call the function
template <typename T>
void forEach(vector<T> &valuesVector, void(*function)(T))
{
    for (auto item : valuesVector)
        function(item);
}

int main(int argc, char *archv[], char **envp)
{
    // Create the vectors
    vector<int> numbers{10, 20, 30, 40, 50};

    vector<char> characters{'a', 'b', 'c', 'd'};

    // Show the vectors items (the functions
    // can be replaced by lambdas)
    forEach<int>(numbers, showItem<int>);
    
    forEach<char>(characters, showItem<char>);

    return 0;
}