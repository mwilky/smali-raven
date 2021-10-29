.class Lcom/android/server/pm/PackageManagerService$ThreadComputer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadComputer"
.end annotation


# instance fields
.field mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

.field mRefCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$ThreadComputer;-><init>()V

    return-void
.end method


# virtual methods
.method acquire()V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "computer acquire on empty ref count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method acquire(Lcom/android/server/pm/PackageManagerService$Computer;)V
    .locals 3

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computer mismatch, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    return-void
.end method

.method release()V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mRefCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ThreadComputer;->mComputer:Lcom/android/server/pm/PackageManagerService$Computer;

    :cond_0
    return-void
.end method
