.class public final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "DumpHelper.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field public final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRequiredVerifierPackage:Ljava/lang/String;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;


# direct methods
.method public static synthetic $r8$lambda$xa8hSSgBhjegHHjHRwLJEgg4JO4(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DumpHelper;->lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "Lcom/android/server/pm/ApexManager;",
            "Lcom/android/server/pm/StorageEventHelper;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/PackageInstallerService;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/KnownPackages;",
            "Lcom/android/server/pm/ChangedPackagesTracker;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    return-void
.end method

.method public static synthetic lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 9

    const-string v0, "  Sequence number="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-string v3, "  User "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-string v4, "    "

    if-nez v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No packages changed"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "seq="

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ", package="

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    new-instance v10, Lcom/android/server/pm/DumpState;

    invoke-direct {v10}, Lcom/android/server/pm/DumpState;-><init>()V

    const/4 v11, 0x0

    move v2, v11

    :goto_0
    array-length v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_7

    aget-object v3, v1, v2

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v12, 0x2d

    if-eq v6, v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const-string v6, "-a"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "-h"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DumpHelper;->printHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_2
    const-string v6, "--checkin"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setCheckIn(Z)V

    goto :goto_0

    :cond_3
    const-string v6, "--all-components"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v10, v4}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_0

    :cond_4
    const-string v4, "-f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_0

    :cond_5
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/DumpHelper;->dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V

    return-void

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    :goto_1
    array-length v3, v1

    const/high16 v12, 0x8000000

    const/high16 v15, 0x200000

    const/high16 v4, 0x100000

    const/high16 v14, 0x80000

    const/16 v13, 0x2000

    const v6, 0x8000

    if-ge v2, v3, :cond_44

    aget-object v3, v1, v2

    add-int/2addr v2, v5

    const-string v11, "android"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_43

    const-string v11, "."

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto/16 :goto_19

    :cond_8
    const-string v11, "check-permission"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    array-length v3, v1

    if-lt v2, v3, :cond_9

    const-string v0, "Error: check-permission missing permission argument"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_9
    aget-object v3, v1, v2

    add-int/2addr v2, v5

    array-length v4, v1

    if-lt v2, v4, :cond_a

    const-string v0, "Error: check-permission missing package argument"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_a
    aget-object v4, v1, v2

    add-int/2addr v2, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    array-length v6, v1

    if-ge v2, v6, :cond_b

    :try_start_0
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: check-permission user argument is not a number: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_2
    const-wide/16 v1, -0x1

    invoke-interface {v7, v4, v1, v2}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, v3, v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :cond_c
    const-string v11, "l"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_42

    const-string v11, "libraries"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    goto/16 :goto_18

    :cond_d
    const-string v11, "f"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_41

    const-string v11, "features"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto/16 :goto_17

    :cond_e
    const-string v11, "r"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37

    const-string v11, "resolvers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto/16 :goto_10

    :cond_f
    const-string v11, "perm"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_36

    const-string v11, "permissions"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    goto/16 :goto_f

    :cond_10
    const-string v11, "permission"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    array-length v3, v1

    if-lt v2, v3, :cond_11

    const-string v0, "Error: permission requires permission name"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    :goto_3
    array-length v11, v1

    if-ge v2, v11, :cond_12

    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    const/16 v1, 0x1c0

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    move-object v11, v3

    goto/16 :goto_1b

    :cond_13
    const-string v11, "pref"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35

    const-string v11, "preferred"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    goto/16 :goto_e

    :cond_14
    const-string v11, "preferred-xml"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v10, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    array-length v3, v1

    if-ge v2, v3, :cond_44

    aget-object v1, v1, v2

    const-string v2, "--full"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setFullPreferred(Z)V

    goto/16 :goto_1a

    :cond_15
    const-string v11, "d"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_34

    const-string v11, "domain-preferred-apps"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    goto/16 :goto_d

    :cond_16
    const-string v11, "p"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_33

    const-string v11, "packages"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    goto/16 :goto_c

    :cond_17
    const-string v11, "q"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    const-string v11, "queries"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    goto/16 :goto_b

    :cond_18
    const-string v11, "s"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_31

    const-string v11, "shared-users"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    goto/16 :goto_a

    :cond_19
    const-string v11, "prov"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_30

    const-string v11, "providers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto/16 :goto_9

    :cond_1a
    const-string v11, "m"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    const-string v11, "messages"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    goto/16 :goto_8

    :cond_1b
    const-string v11, "v"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    const-string v11, "verifiers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    goto/16 :goto_7

    :cond_1c
    const-string v11, "dv"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2d

    const-string v11, "domain-verifier"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    goto/16 :goto_6

    :cond_1d
    const-string v11, "version"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_1e
    const-string v11, "k"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string v11, "keysets"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const-string v11, "installs"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    const/high16 v1, 0x10000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_20
    const-string v11, "frozen"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-virtual {v10, v14}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_21
    const-string v11, "volumes"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    const/high16 v1, 0x800000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_22
    const-string v11, "dexopt"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-virtual {v10, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_23
    const-string v11, "compiler-stats"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual {v10, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_24
    const-string v11, "changes"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    const/high16 v1, 0x400000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_25
    const-string v11, "service-permissions"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    const/high16 v1, 0x1000000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_26
    const-string v11, "known-packages"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-virtual {v10, v12}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_27
    const-string v11, "t"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2b

    const-string v11, "timeouts"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    goto :goto_4

    :cond_28
    const-string v11, "snapshot"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/high16 v3, 0x20000000

    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    array-length v3, v1

    if-ge v2, v3, :cond_44

    aget-object v3, v1, v2

    const-string v11, "--full"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_1a

    :cond_29
    aget-object v1, v1, v2

    const-string v2, "--brief"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_1a

    :cond_2a
    const-string v1, "protected-broadcasts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2b
    :goto_4
    const/high16 v1, 0x10000000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2c
    :goto_5
    const/16 v1, 0x4000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2d
    :goto_6
    const/high16 v1, 0x20000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2e
    :goto_7
    const/16 v1, 0x800

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_2f
    :goto_8
    const/16 v1, 0x200

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_30
    :goto_9
    const/16 v1, 0x400

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_31
    :goto_a
    const/16 v3, 0x100

    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    array-length v3, v1

    if-ge v2, v3, :cond_44

    aget-object v1, v1, v2

    const-string v2, "noperm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto/16 :goto_1a

    :cond_32
    :goto_b
    const/high16 v1, 0x4000000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_33
    :goto_c
    const/16 v1, 0x80

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_34
    :goto_d
    const/high16 v1, 0x40000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_35
    :goto_e
    const/16 v1, 0x1000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_36
    :goto_f
    const/16 v1, 0x40

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_37
    :goto_10
    array-length v3, v1

    if-lt v2, v3, :cond_38

    const/16 v1, 0x3c

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_38
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_44

    aget-object v3, v1, v2

    const-string v11, "a"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_40

    const-string v11, "activity"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_39

    goto :goto_15

    :cond_39
    const-string v11, "s"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3f

    const-string v11, "service"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    goto :goto_14

    :cond_3a
    const-string v11, "r"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3e

    const-string v11, "receiver"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b

    goto :goto_13

    :cond_3b
    const-string v11, "c"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    const-string v11, "content"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    goto :goto_12

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown resolver table type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3d
    :goto_12
    const/16 v3, 0x20

    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    :cond_3e
    :goto_13
    const/16 v3, 0x10

    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    :cond_3f
    :goto_14
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    :cond_40
    :goto_15
    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_41
    :goto_17
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_1a

    :cond_42
    :goto_18
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_1a

    :cond_43
    :goto_19
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setTargetPackageName(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    :cond_44
    :goto_1a
    const/4 v11, 0x0

    :goto_1b
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v16

    if-eqz v3, :cond_45

    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_45

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_45
    if-eqz v16, :cond_46

    const-string v1, "vers,1"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_46
    if-nez v16, :cond_47

    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_47

    if-nez v3, :cond_47

    invoke-interface {v7, v6, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_47
    const-string v6, "  "

    if-nez v16, :cond_4c

    invoke-virtual {v10, v12}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    if-nez v3, :cond_4c

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_48
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v2, 0x78

    invoke-direct {v1, v9, v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    const-string v2, "Known Packages:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_1c
    const/16 v12, 0x12

    if-gt v2, v12, :cond_4b

    invoke-static {v2}, Lcom/android/server/pm/KnownPackages;->knownPackageToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    const/4 v4, 0x0

    invoke-virtual {v12, v7, v2, v4}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    const-string v4, "none"

    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    :cond_49
    array-length v4, v12

    const/4 v15, 0x0

    :goto_1d
    if-ge v15, v4, :cond_4a

    aget-object v14, v12, v15

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    const/high16 v14, 0x80000

    goto :goto_1d

    :cond_4a
    :goto_1e
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    const/high16 v4, 0x100000

    const/high16 v14, 0x80000

    const/high16 v15, 0x200000

    goto :goto_1c

    :cond_4b
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4c
    const/16 v1, 0x800

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    const-string v12, ")"

    const-string v2, ","

    const-wide/32 v14, 0x10000000

    if-eqz v1, :cond_4f

    if-nez v3, :cond_4f

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    if-nez v16, :cond_4e

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_4d
    const-string v4, "Verifiers:"

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  Required: "

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (uid="

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v7, v1, v14, v15, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    :cond_4e
    const/4 v4, 0x0

    if-eqz v1, :cond_4f

    const-string v13, "vrfy,"

    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v7, v1, v14, v15, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_4f
    :goto_1f
    const/high16 v1, 0x20000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_53

    if-nez v3, :cond_53

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v16, :cond_51

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_50
    const-string v4, "Domain Verifier:"

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  Using: "

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (uid="

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-interface {v7, v1, v14, v15, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    :cond_51
    const/4 v13, 0x0

    if-eqz v1, :cond_54

    const-string v4, "dv,"

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v7, v1, v14, v15, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_20

    :cond_52
    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    const-string v1, "No Domain Verifier available!"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    :cond_53
    const/4 v13, 0x0

    :cond_54
    :goto_20
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_55

    if-nez v3, :cond_55

    invoke-interface {v7, v5, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_55
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    if-nez v3, :cond_5a

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_56
    if-nez v16, :cond_57

    const-string v1, "Features:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_57
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    if-nez v16, :cond_59

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v5, :cond_58

    const-string v5, " version="

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(I)V

    :cond_58
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_21

    :cond_59
    const-string v5, "feat,"

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_21

    :cond_5a
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v14

    if-nez v16, :cond_5b

    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v14, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_5b
    if-nez v16, :cond_5c

    const/16 v1, 0x10

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v14, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_5c
    if-nez v16, :cond_5d

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v14, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_5d
    if-nez v16, :cond_5e

    const/16 v1, 0x20

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v14, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_5e
    if-nez v16, :cond_5f

    const/16 v1, 0x1000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_5f
    if-nez v16, :cond_60

    const/16 v1, 0x2000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_60

    if-nez v3, :cond_60

    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_60
    if-nez v16, :cond_61

    const/high16 v1, 0x40000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_61
    if-nez v16, :cond_62

    const/16 v1, 0x40

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v7, v9, v3, v11, v10}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    :cond_62
    if-nez v16, :cond_63

    const/16 v1, 0x400

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v14, v7, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_63
    if-nez v16, :cond_64

    const/16 v1, 0x4000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v7, v9, v3, v10}, Lcom/android/server/pm/Computer;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    :cond_64
    const/16 v1, 0x80

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_65

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v15, v3

    const/high16 v5, 0x100000

    move-object v4, v11

    move v13, v5

    move-object v5, v10

    move-object/from16 v17, v6

    move/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    goto :goto_22

    :cond_65
    move-object v15, v3

    move-object/from16 v17, v6

    const/high16 v13, 0x100000

    :goto_22
    if-nez v16, :cond_66

    const/high16 v1, 0x4000000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_66
    const/16 v1, 0x100

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_67

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v15

    move-object v4, v11

    move-object v5, v10

    move/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    :cond_67
    if-nez v16, :cond_69

    const/high16 v1, 0x400000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_69

    if-nez v15, :cond_69

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_68
    const-string v1, "Package Changes:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    new-instance v2, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ChangedPackagesTracker;->iterateAll(Ljava/util/function/BiConsumer;)V

    :cond_69
    if-nez v16, :cond_6a

    const/high16 v1, 0x80000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6a

    if-nez v15, :cond_6a

    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6a
    if-nez v16, :cond_6b

    const/high16 v1, 0x800000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    if-nez v15, :cond_6b

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/pm/StorageEventHelper;->dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6b
    if-nez v16, :cond_6c

    const/high16 v1, 0x1000000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    if-nez v15, :cond_6c

    invoke-interface {v14, v9, v10}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6c
    if-nez v16, :cond_6d

    invoke-virtual {v10, v13}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v7, v13, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6d
    if-nez v16, :cond_6e

    const/high16 v1, 0x200000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6e
    const/16 v1, 0x200

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_71

    if-nez v15, :cond_71

    if-nez v16, :cond_70

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_6f
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Package warning messages:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_23

    :cond_70
    const-string v1, "msg,"

    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_71
    :goto_23
    if-nez v16, :cond_73

    const/high16 v1, 0x10000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_73

    if-nez v15, :cond_73

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_72
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v3, 0x78

    move-object/from16 v4, v17

    invoke-direct {v2, v9, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_24

    :cond_73
    move-object/from16 v4, v17

    :goto_24
    if-nez v16, :cond_75

    const/high16 v1, 0x2000000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_75

    if-eqz v15, :cond_74

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v15}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    :cond_74
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v9, v15}, Lcom/android/server/pm/ApexManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_75
    if-nez v16, :cond_77

    const/high16 v1, 0x10000000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_77

    if-nez v15, :cond_77

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_76
    const-string v1, "Per UID read timeouts:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Default timeouts flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Known digesters list flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Timeouts ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_77

    aget-object v5, v1, v3

    const-string v6, "        ("

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minTimeUs="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v5, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minPendingTimeUs="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v5, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxPendingTimeUs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_77
    if-nez v16, :cond_78

    const/high16 v1, 0x20000000

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_78

    if-nez v15, :cond_78

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_78
    if-nez v16, :cond_7a

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    if-nez v15, :cond_7a

    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_79
    const-string v1, "Protected broadcast actions:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_26
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v11, v1, :cond_7a

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    :cond_7a
    return-void
.end method

.method public final dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V
    .locals 10

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {v0, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    const-wide/32 v5, 0x10000000

    const/4 v7, 0x0

    invoke-interface {p1, p2, v5, v6, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    const-wide v8, 0x10500000002L

    invoke-virtual {v0, v8, v9, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v0, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface {p1, p2, v5, v6, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    invoke-virtual {v0, v8, v9, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_0
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/DumpHelper;->dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final printHelp(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "Package manager dump options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    --checkin: dump for a checkin"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -f: print details of intent filters"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -h: print this help"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    --all-components: include all component names in package dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  cmd may be one of:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    apex: list active APEXes and APEX session state"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    l[ibraries]: list known shared libraries"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    f[eatures]: list device features"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    k[eysets]: print known keysets"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    perm[issions]: dump permissions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    permission [name ...]: dump declaration and use of given permission"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    pref[erred]: print preferred package settings"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    preferred-xml [--full]: print preferred package settings as xml"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    prov[iders]: dump content providers"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    p[ackages]: dump installed packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    q[ueries]: dump app queryability calculations"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    s[hared-users]: dump shared user IDs"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    m[essages]: print collected runtime messages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    v[erifiers]: print package verifier info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    d[omain-preferred-apps]: print domains preferred apps"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    t[imeouts]: print read timeouts for known digesters"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    version: print database version info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    write: write current settings now"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    installs: details about install sessions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    dexopt: dump dexopt state"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    compiler-stats: dump compiler statistics"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    service-permissions: dump permissions required by services"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    snapshot: dump snapshot statistics"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    protected-broadcasts: print list of protected broadcast actions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    known-packages: dump known packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    <package.name>: info about given package"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
