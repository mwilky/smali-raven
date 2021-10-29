.class public final Lcom/android/server/SystemService$TargetUser;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TargetUser"
.end annotation


# instance fields
.field private final mFull:Z

.field private final mManagedProfile:Z

.field private final mPreCreated:Z

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mManagedProfile:Z

    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "full"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_2
    const-string/jumbo v1, "mp"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdentifier()I
    .locals 1

    iget v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    return v0
.end method

.method public isFull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    return v0
.end method

.method public isManagedProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mManagedProfile:Z

    return v0
.end method

.method public isPreCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
