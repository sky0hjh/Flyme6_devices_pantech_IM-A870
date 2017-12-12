.class Lcom/android/internal/util/viper/ShutdownDialog$1;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/viper/ShutdownDialog;-><init>(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/viper/ShutdownDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/util/viper/ShutdownDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/viper/ShutdownDialog;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/util/viper/ShutdownDialog$1;->this$0:Lcom/android/internal/util/viper/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/util/viper/ShutdownDialog$1;->this$0:Lcom/android/internal/util/viper/ShutdownDialog;

    invoke-static {v0}, Lcom/android/internal/util/viper/ShutdownDialog;->-get0(Lcom/android/internal/util/viper/ShutdownDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 97
    return-void
.end method
