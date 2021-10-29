.class final Lcom/android/server/pm/InstallSource;
.super Ljava/lang/Object;
.source "InstallSource.java"


# static fields
.field static final EMPTY:Lcom/android/server/pm/InstallSource;

.field private static final EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;


# instance fields
.field final initiatingPackageName:Ljava/lang/String;

.field final initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

.field final installerAttributionTag:Ljava/lang/String;

.field final installerPackageName:Ljava/lang/String;

.field final isInitiatingPackageUninstalled:Z

.field final isOrphaned:Z

.field final originatingPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lcom/android/server/pm/InstallSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)V

    sput-object v8, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    new-instance v0, Lcom/android/server/pm/InstallSource;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)V

    sput-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-nez p7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    xor-int/lit8 v0, p6, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iput-boolean p6, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iput-object p7, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;
    .locals 7

    nop

    invoke-static {p0}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method private static createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .locals 9

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p6, :cond_1

    if-nez p5, :cond_1

    if-eqz p4, :cond_0

    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/server/pm/InstallSource;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)V

    return-object v0
.end method

.method private static intern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 12

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    return-object p0

    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move-object v6, v2

    move-object v7, v3

    move v9, v4

    move v10, v1

    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v5

    return-object v5
.end method

.method setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-boolean v6, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method setInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-boolean v6, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v7, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v7, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method
