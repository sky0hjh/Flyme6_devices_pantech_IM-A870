.class public Lcom/android/internal/util/AllianceUtils;
.super Ljava/lang/Object;
.source "AllianceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustAlpha(IF)I
    .locals 5
    .param p0, "color"    # I
    .param p1, "factor"    # F

    .prologue
    .line 256
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 257
    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 258
    .local v3, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 259
    .local v2, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 260
    .local v1, "blue":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static colorizeIcon(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageButton"    # Landroid/widget/ImageButton;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultColor"    # I

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "color":I
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 170
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    if-nez v0, :cond_3

    .line 172
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 161
    :cond_1
    :goto_1
    return-void

    .line 167
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public static colorizeIcon(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultColor"    # I

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, "color":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static colorizeText(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultColor"    # I

    .prologue
    .line 180
    const/4 v5, 0x0

    .line 181
    .local v5, "resultCharSequence":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 182
    .local v3, "charSequence":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 184
    .local v4, "color":I
    instance-of v10, v3, Landroid/text/Spanned;

    if-eqz v10, :cond_3

    move-object v8, v3

    .line 185
    check-cast v8, Landroid/text/Spanned;

    .line 186
    .local v8, "spanned":Landroid/text/Spanned;
    invoke-interface {v8}, Landroid/text/Spanned;->length()I

    move-result v10

    const-class v11, Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {v8, v12, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 187
    .local v9, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v8}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 188
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    array-length v12, v9

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v7, v9, v11

    .line 189
    .local v7, "span":Ljava/lang/Object;
    move-object v6, v7

    .line 190
    .local v6, "resultSpan":Ljava/lang/Object;
    instance-of v10, v7, Landroid/text/style/TextAppearanceSpan;

    if-eqz v10, :cond_0

    move-object v10, v7

    .line 191
    check-cast v10, Landroid/text/style/TextAppearanceSpan;

    invoke-static {v4, v10}, Lcom/android/internal/util/AllianceUtils;->processTextAppearanceSpan(ILandroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v6

    .line 193
    :cond_0
    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v2, v6, v10, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 188
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 195
    .end local v6    # "resultSpan":Ljava/lang/Object;
    .end local v7    # "span":Ljava/lang/Object;
    :cond_1
    move-object v5, v2

    .line 200
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "spanned":Landroid/text/Spanned;
    .end local v9    # "spans":[Ljava/lang/Object;
    .local v5, "resultCharSequence":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v5, :cond_2

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    return-void

    .line 197
    .local v5, "resultCharSequence":Ljava/lang/CharSequence;
    :cond_3
    move-object v5, v3

    .local v5, "resultCharSequence":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 36
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 120
    if-eqz p0, :cond_1

    .line 121
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 122
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 124
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    return-object v0

    .line 131
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    return-object v2
.end method

.method public static getBlendColor(IIF)I
    .locals 9
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 48
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p2

    .line 49
    .local v3, "inverseRatio":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v0, v5, v6

    .line 50
    .local v0, "a":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v4, v5, v6

    .line 51
    .local v4, "r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    .line 52
    .local v2, "g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v1, v5, v6

    .line 54
    .local v1, "b":F
    float-to-int v5, v0

    float-to-int v6, v4

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method public static getColorFilter(I)Landroid/graphics/ColorMatrixColorFilter;
    .locals 9
    .param p0, "color"    # I

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v8, 0x0

    .line 90
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    div-float v4, v5, v6

    .line 91
    .local v4, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 92
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v6

    .line 94
    .local v0, "b":F
    new-instance v2, Landroid/graphics/ColorMatrix;

    const/16 v5, 0x14

    new-array v5, v5, [F

    .line 95
    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v8, v5, v6

    const/4 v6, 0x2

    aput v8, v5, v6

    const/4 v6, 0x3

    aput v8, v5, v6

    const/4 v6, 0x4

    aput v8, v5, v6

    .line 96
    const/4 v6, 0x5

    aput v8, v5, v6

    const/4 v6, 0x6

    aput v3, v5, v6

    const/4 v6, 0x7

    aput v8, v5, v6

    const/16 v6, 0x8

    aput v8, v5, v6

    const/16 v6, 0x9

    aput v8, v5, v6

    .line 97
    const/16 v6, 0xa

    aput v8, v5, v6

    const/16 v6, 0xb

    aput v8, v5, v6

    const/16 v6, 0xc

    aput v0, v5, v6

    const/16 v6, 0xd

    aput v8, v5, v6

    const/16 v6, 0xe

    aput v8, v5, v6

    .line 98
    const/16 v6, 0xf

    aput v8, v5, v6

    const/16 v6, 0x10

    aput v8, v5, v6

    const/16 v6, 0x11

    aput v8, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x12

    aput v6, v5, v7

    const/16 v6, 0x13

    aput v8, v5, v6

    .line 94
    invoke-direct {v2, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 100
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 101
    .local v1, "cf":Landroid/graphics/ColorMatrixColorFilter;
    return-object v1
.end method

.method public static getColoredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 105
    instance-of v5, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 107
    return-object p0

    .line 109
    :cond_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, "colorBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/internal/util/AllianceUtils;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 111
    .local v3, "grayscaleBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 112
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 113
    .local v2, "frontFilter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 114
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v3, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method public static getIconColorDark(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/high16 v2, 0x7a000000

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, "color":I
    const v1, 0xffffff

    and-int/2addr v1, v0

    const/high16 v2, -0x67000000

    or-int/2addr v1, v2

    return v1
.end method

.method public static getLightenOrDarkenColor(I)I
    .locals 13
    .param p0, "color"    # I

    .prologue
    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x437f0000    # 255.0f

    .line 67
    invoke-static {p0}, Lcom/android/internal/util/AllianceUtils;->isColorDark(I)Z

    move-result v4

    .line 68
    .local v4, "isDark":Z
    if-eqz v4, :cond_0

    const v2, 0x3dcccccd    # 0.1f

    .line 69
    .local v2, "factor":F
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 70
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 71
    .local v6, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 72
    .local v3, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 75
    .local v1, "b":I
    if-eqz v4, :cond_1

    .line 77
    int-to-float v7, v6

    sub-float v8, v10, v2

    mul-float/2addr v7, v8

    div-float/2addr v7, v11

    add-float/2addr v7, v2

    mul-float/2addr v7, v11

    float-to-int v7, v7

    .line 78
    int-to-float v8, v3

    sub-float v9, v10, v2

    mul-float/2addr v8, v9

    div-float/2addr v8, v11

    add-float/2addr v8, v2

    mul-float/2addr v8, v11

    float-to-int v8, v8

    .line 79
    int-to-float v9, v1

    sub-float/2addr v10, v2

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v9, v2

    mul-float/2addr v9, v11

    float-to-int v9, v9

    .line 76
    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 86
    .local v5, "newColor":I
    :goto_1
    return v5

    .line 68
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "factor":F
    .end local v3    # "g":I
    .end local v5    # "newColor":I
    .end local v6    # "r":I
    :cond_0
    const v2, 0x3f4ccccd    # 0.8f

    .restart local v2    # "factor":F
    goto :goto_0

    .line 82
    .restart local v0    # "a":I
    .restart local v1    # "b":I
    .restart local v3    # "g":I
    .restart local v6    # "r":I
    :cond_1
    int-to-float v7, v6

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 83
    int-to-float v8, v3

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 84
    int-to-float v9, v1

    mul-float/2addr v9, v2

    float-to-int v9, v9

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 81
    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .restart local v5    # "newColor":I
    goto :goto_1
.end method

.method public static isColorDark(I)Z
    .locals 8
    .param p0, "color"    # I

    .prologue
    .line 58
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v2

    .line 59
    .local v0, "a":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 60
    const/4 v2, 0x1

    return v2

    .line 62
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isNavBarDefault(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static processColor(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 252
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static processTextAppearanceSpan(ILandroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10
    .param p0, "color"    # I
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 232
    .local v7, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_3

    .line 233
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v8

    .line 234
    .local v8, "colors":[I
    const/4 v6, 0x0

    .line 235
    .local v6, "changed":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_2

    .line 236
    aget v0, v8, v9

    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    if-nez v6, :cond_0

    .line 238
    array-length v0, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 240
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/AllianceUtils;->processColor(I)I

    move-result v0

    aput v0, v8, v9

    .line 241
    const/4 v6, 0x1

    .line 235
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 244
    :cond_2
    if-eqz v6, :cond_3

    .line 245
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-direct {v4, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    .line 248
    .end local v6    # "changed":Z
    .end local v8    # "colors":[I
    .end local v9    # "i":I
    :cond_3
    return-object p1
.end method

.method private static processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10
    .param p0, "span"    # Landroid/text/style/TextAppearanceSpan;

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 208
    .local v7, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_3

    .line 209
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v8

    .line 210
    .local v8, "colors":[I
    const/4 v6, 0x0

    .line 211
    .local v6, "changed":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_2

    .line 212
    aget v0, v8, v9

    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    if-nez v6, :cond_0

    .line 214
    array-length v0, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 216
    :cond_0
    aget v0, v8, v9

    invoke-static {v0}, Lcom/android/internal/util/AllianceUtils;->processColor(I)I

    move-result v0

    aput v0, v8, v9

    .line 217
    const/4 v6, 0x1

    .line 211
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 220
    :cond_2
    if-eqz v6, :cond_3

    .line 221
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 222
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    .line 223
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-direct {v4, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 224
    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 221
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    .line 227
    .end local v6    # "changed":Z
    .end local v8    # "colors":[I
    .end local v9    # "i":I
    :cond_3
    return-object p0
.end method

.method public static pxToDp(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .prologue
    .line 40
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 137
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 138
    .local v4, "height":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 139
    .local v3, "grayBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 142
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 143
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 144
    .local v1, "cf":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 145
    invoke-virtual {v0, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    return-object v3
.end method
