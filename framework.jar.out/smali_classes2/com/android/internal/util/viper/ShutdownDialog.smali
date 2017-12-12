.class public Lcom/android/internal/util/viper/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# static fields
.field private static final ACTION_FACTORY_RESET:I = 0x1

.field private static final ACTION_REBOOT:I = 0x2

.field private static final ACTION_SHUTDOWN:I = 0x3

.field private static final ACTION_UPDATE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLogo:Landroid/widget/ImageView;

.field private mPrimaryText:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/viper/ShutdownDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mPrimaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "windowType"    # I
    .param p4, "action"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    iput-object p1, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900e2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "rootView":Landroid/view/View;
    const v3, 0x102040c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mLogo:Landroid/widget/ImageView;

    .line 68
    const v3, 0x102040f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 69
    const v3, 0x102040d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mPrimaryText:Landroid/widget/TextView;

    .line 71
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/util/viper/ShutdownDialog;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/internal/util/viper/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 74
    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/util/viper/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/Window;->setType(I)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/viper/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/util/viper/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0xc000500

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/util/viper/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 80
    const/16 v3, 0x1706

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/util/viper/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 89
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 90
    const/4 v3, 0x5

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/util/viper/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 92
    invoke-virtual {p0, v5}, Lcom/android/internal/util/viper/ShutdownDialog;->setCancelable(Z)V

    .line 93
    invoke-direct {p0, p4}, Lcom/android/internal/util/viper/ShutdownDialog;->setMessage(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/util/viper/ShutdownDialog;->show()V

    .line 96
    new-instance v3, Lcom/android/internal/util/viper/ShutdownDialog$1;

    invoke-direct {v3, p0}, Lcom/android/internal/util/viper/ShutdownDialog$1;-><init>(Lcom/android/internal/util/viper/ShutdownDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/android/internal/util/viper/ShutdownDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .prologue
    .line 53
    const/16 v0, 0x7d9

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/viper/ShutdownDialog;->create(Landroid/content/Context;II)Lcom/android/internal/util/viper/ShutdownDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;II)Lcom/android/internal/util/viper/ShutdownDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowType"    # I
    .param p2, "action"    # I

    .prologue
    .line 57
    const v0, 0x10301e4

    .line 58
    .local v0, "theme":I
    new-instance v1, Lcom/android/internal/util/viper/ShutdownDialog;

    const v2, 0x10301e4

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/internal/util/viper/ShutdownDialog;-><init>(Landroid/content/Context;III)V

    return-object v1
.end method

.method private setMessage(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    const v2, 0x1040025

    .line 105
    const-string/jumbo v0, ""

    .line 107
    .local v0, "mMessage":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 116
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 109
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/util/viper/ShutdownDialog;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method
