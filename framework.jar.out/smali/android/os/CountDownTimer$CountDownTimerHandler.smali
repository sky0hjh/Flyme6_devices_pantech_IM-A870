.class Landroid/os/CountDownTimer$CountDownTimerHandler;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountDownTimerHandler"
.end annotation


# instance fields
.field private final countDownTimerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/CountDownTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 1
    .param p1, "countDownTimeInstance"    # Landroid/os/CountDownTimer;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/CountDownTimer$CountDownTimerHandler;->countDownTimerWeakReference:Ljava/lang/ref/WeakReference;

    .line 134
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    .line 140
    iget-object v1, p0, Landroid/os/CountDownTimer$CountDownTimerHandler;->countDownTimerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CountDownTimer;

    .line 141
    .local v0, "countDownTimer":Landroid/os/CountDownTimer;
    instance-of v1, v0, Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    .line 142
    monitor-enter v0

    .line 143
    :try_start_0
    invoke-static {v0}, Landroid/os/CountDownTimer;->-get0(Landroid/os/CountDownTimer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    .line 144
    return-void

    .line 146
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/os/CountDownTimer;->-get2(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 147
    .local v6, "millisLeft":J
    cmp-long v1, v6, v12

    if-gtz v1, :cond_2

    .line 148
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    .line 139
    .end local v6    # "millisLeft":J
    :cond_1
    return-void

    .line 149
    .restart local v6    # "millisLeft":J
    :cond_2
    :try_start_2
    invoke-static {v0}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    .line 151
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/CountDownTimer$CountDownTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v6, v7}, Landroid/os/CountDownTimer$CountDownTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    .end local v6    # "millisLeft":J
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 153
    .restart local v6    # "millisLeft":J
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 154
    .local v4, "lastTickStart":J
    invoke-virtual {v0, v6, v7}, Landroid/os/CountDownTimer;->onTick(J)V

    .line 156
    invoke-static {v0}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 159
    .local v2, "delay":J
    :goto_1
    cmp-long v1, v2, v12

    if-gez v1, :cond_4

    invoke-static {v0}, Landroid/os/CountDownTimer;->-get1(Landroid/os/CountDownTimer;)J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_1

    .line 160
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/CountDownTimer$CountDownTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/CountDownTimer$CountDownTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
