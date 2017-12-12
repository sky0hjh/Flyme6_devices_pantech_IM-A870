.class public Lcom/android/internal/util/viper/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appUri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 31
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return v3

    .line 33
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method public static isAvailableApp(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 39
    move-object v2, p1

    .line 40
    .local v2, "mContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 42
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, p0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 43
    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    .local v1, "enabled":I
    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    .line 45
    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    .line 44
    :goto_0
    return v4

    :cond_0
    move v4, v5

    .line 45
    goto :goto_0

    :cond_1
    move v4, v5

    .line 44
    goto :goto_0

    .line 46
    .end local v1    # "enabled":I
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5
.end method
