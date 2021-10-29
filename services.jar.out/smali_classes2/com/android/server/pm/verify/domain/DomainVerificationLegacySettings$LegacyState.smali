.class Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;
.super Ljava/lang/Object;
.source "DomainVerificationLegacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LegacyState"
.end annotation


# instance fields
.field private attached:Z

.field private mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field private mUserStates:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserState(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public getInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method public getUserState(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getUserStates()Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->attached:Z

    return v0
.end method

.method public markAttached()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->attached:Z

    return-void
.end method

.method public setInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-void
.end method
