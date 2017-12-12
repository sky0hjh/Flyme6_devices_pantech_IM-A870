.class Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;
.super Ljava/lang/Thread;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformPollAsyncThread"
.end annotation


# instance fields
.field private mflags:I

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    .line 1118
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1119
    iput p3, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->mflags:I

    .line 1117
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Landroid/util/TrustedTime;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->-get3(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Landroid/util/TrustedTime;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get8(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1130
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget v2, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->mflags:I

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get8(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1121
    return-void

    .line 1131
    :catchall_0
    move-exception v0

    .line 1132
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$PerformPollAsyncThread;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->-get8(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1131
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1126
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
