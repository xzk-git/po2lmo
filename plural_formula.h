#ifndef _PLURAL_FORMULA_H_
#define _PLURAL_FORMULA_H_

static inline int plural_eval(int n)
{
    /* Default plural rule: English style */
    return (n != 1);
}

#endif
