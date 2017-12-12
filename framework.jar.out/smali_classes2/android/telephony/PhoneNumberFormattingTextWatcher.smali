.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mLastNumberStart:I

.field private mSelfChange:Z

.field private final mSeparatorLength:I

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 53
    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSeparatorLength:I

    .line 74
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    .line 73
    return-void
.end method

.method private CheckSeparator(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 195
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_1

    .line 196
    :cond_0
    return v2

    .line 198
    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_3

    :cond_2
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 199
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_3
    return v2
.end method

.method private findLastNumberStart(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 206
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 207
    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->CheckSeparator(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 214
    return v2

    .line 210
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 216
    :cond_2
    add-int/lit8 v1, v0, 0x2

    return v1
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .locals 1
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    .prologue
    .line 172
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 182
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_2

    .line 183
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1, v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->CheckSeparator(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 187
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    const/4 v2, 0x1

    return v2

    .line 191
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 146
    add-int/lit8 v1, p2, -0x1

    .line 147
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .line 148
    .local v2, "formatted":Ljava/lang/String;
    iget-object v7, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 149
    const/4 v5, 0x0

    .line 150
    .local v5, "lastNonSeparator":C
    const/4 v3, 0x0

    .line 151
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 152
    .local v6, "len":I
    const/4 v4, 0x0

    .end local v2    # "formatted":Ljava/lang/String;
    .end local v5    # "lastNonSeparator":C
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 153
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 154
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 155
    if-eqz v5, :cond_0

    .line 156
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "formatted":Ljava/lang/String;
    const/4 v3, 0x0

    .line 159
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_0
    move v5, v0

    .line 161
    :cond_1
    if-ne v4, v1, :cond_2

    .line 162
    const/4 v3, 0x1

    .line 152
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "c":C
    :cond_3
    if-eqz v5, :cond_4

    .line 166
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_4
    return-object v2
.end method

.method private stopFormatting()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 178
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 176
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->findLastNumberStart(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    .line 104
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 109
    :cond_0
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    .line 111
    return-void

    .line 113
    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    sub-int v9, v0, v1

    .line 115
    .local v9, "sLength":I
    if-lez v9, :cond_5

    .line 116
    new-array v6, v9, [C

    .line 117
    .local v6, "cLastNumber":[C
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    iget v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    add-int/2addr v1, v9

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v6, v2}, Landroid/text/Editable;->getChars(II[CI)V

    .line 118
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    .line 119
    .local v7, "lastNumber":Ljava/lang/String;
    invoke-direct {p0, v7, v9}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    .line 124
    .end local v6    # "cLastNumber":[C
    .end local v7    # "lastNumber":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_4

    .line 125
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v8

    .line 126
    .local v8, "rememberedPos":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 127
    iget v1, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    add-int v2, v0, v9

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p1

    .line 127
    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mLastNumberStart:I

    add-int/2addr v0, v8

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 134
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 136
    .end local v8    # "rememberedPos":I
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 102
    return-void

    .line 121
    :cond_5
    const/4 v7, 0x0

    .line 122
    .local v7, "lastNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "formatted":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "formatted":Ljava/lang/String;
    .end local v7    # "lastNumber":Ljava/lang/String;
    .end local v9    # "sLength":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    return-void

    .line 85
    :cond_1
    if-lez p3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 80
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    return-void

    .line 96
    :cond_1
    if-lez p4, :cond_2

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    .line 91
    :cond_2
    return-void
.end method
