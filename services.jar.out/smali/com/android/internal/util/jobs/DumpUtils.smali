.class public final Lcom/android/internal/util/jobs/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/jobs/DumpUtils$Dump;
    }
.end annotation


# static fields
.field public static final CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DumpUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/util/jobs/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " due to missing android.permission.DUMP permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static checkUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, ", uid="

    const-string v4, " from from pid="

    const-string v5, "Permission Denial: can\'t dump "

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to missing android.permission.PACKAGE_USAGE_STATS permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v6

    :sswitch_0
    return v1

    :cond_0
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v8, v7

    move v9, v6

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    const/16 v11, 0x2b

    invoke-virtual {v2, v11, v0, v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :sswitch_1
    return v1

    :sswitch_2
    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to android:get_usage_stats app-op not allowed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/DumpUtils;->logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v6

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x42b -> :sswitch_0
        0x7d0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x3 -> :sswitch_1
    .end sparse-switch
.end method

.method public static dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/jobs/DumpUtils$1;

    invoke-direct {v1, v0, p1, p3}, Lcom/android/internal/util/jobs/DumpUtils$1;-><init>(Ljava/io/StringWriter;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "... timed out"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRec::",
            "Landroid/content/ComponentName$WithComponentName;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "TTRec;>;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda6;

    return-object v0

    :cond_0
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda7;

    return-object v0

    :cond_1
    const-string v0, "all-platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda5;

    return-object v0

    :cond_2
    const-string v0, "all-non-platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;

    return-object v0

    :cond_3
    const-string v0, "all-platform-critical"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda3;

    return-object v0

    :cond_4
    const-string v0, "all-platform-non-critical"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda4;

    return-object v0

    :cond_5
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/ComponentName;)V

    return-object v1

    :cond_6
    const/16 v1, 0x10

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/jobs/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v1

    new-instance v2, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private static isCriticalPackage(Landroid/content/ComponentName;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/internal/util/jobs/DumpUtils;->CRITICAL_SECTION_COMPONENTS:[Landroid/content/ComponentName;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNonPlatformPackage(Landroid/content/ComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isNonPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNonPlatformPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isCriticalPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlatformPackage(Landroid/content/ComponentName;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlatformPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$filterRecord$0(Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z
    .locals 3

    invoke-interface {p2}, Landroid/content/ComponentName$WithComponentName;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p0, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static logMessage(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
