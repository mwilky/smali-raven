.class final Lcom/android/server/devicepolicy/OwnerShellData;
.super Ljava/lang/Object;
.source "OwnerShellData.java"


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isAffiliated:Z

.field public final isDeviceOwner:Z

.field public final isManagedProfileOwner:Z

.field public final isProfileOwner:Z

.field public final parentUserId:I

.field public final userId:I


# direct methods
.method private constructor <init>(IILandroid/content/ComponentName;ZZZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string/jumbo v4, "userId cannot be USER_NULL"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    iput p2, p0, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    const-string v3, "admin must not be null"

    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    iput-boolean p4, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    iput-boolean p5, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    iput-boolean p6, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    if-eqz p6, :cond_3

    if-eq p2, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string/jumbo v3, "parentUserId cannot be USER_NULL for managed profile owner"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eq p2, p1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "cannot be parent of itself (%d)"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method static forDeviceOwner(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/OwnerShellData;
    .locals 8

    new-instance v7, Lcom/android/server/devicepolicy/OwnerShellData;

    const/16 v2, -0x2710

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    return-object v7
.end method

.method static forManagedProfileOwner(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/OwnerShellData;
    .locals 8

    new-instance v7, Lcom/android/server/devicepolicy/OwnerShellData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    return-object v7
.end method

.method static forUserProfileOwner(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/OwnerShellData;
    .locals 8

    new-instance v7, Lcom/android/server/devicepolicy/OwnerShellData;

    const/16 v2, -0x2710

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/OwnerShellData;-><init>(IILandroid/content/ComponentName;ZZZ)V

    return-object v7
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",admin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->admin:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isDeviceOwner:Z

    if-eqz v1, :cond_0

    const-string v1, ",deviceOwner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isProfileOwner:Z

    if-eqz v1, :cond_1

    const-string v1, ",isProfileOwner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isManagedProfileOwner:Z

    if-eqz v1, :cond_2

    const-string v1, ",isManagedProfileOwner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_3

    const-string v1, ",parentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->parentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/OwnerShellData;->isAffiliated:Z

    if-eqz v1, :cond_4

    const-string v1, ",isAffiliated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
