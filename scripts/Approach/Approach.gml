// Approaches a to b linearly by a certain amount
function Approach (a, b, amount) {
    if (a < b) {
        a += amount;
        if (a > b) {
            return b;
        }
    } else {
        a -= amount;
        if (a < b) {
            return b;
        }
    }
    return a;
}