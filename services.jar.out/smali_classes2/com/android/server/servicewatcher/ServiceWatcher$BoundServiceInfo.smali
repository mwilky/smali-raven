.class public Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundServiceInfo"
.end annotation


# instance fields
.field protected final mAction:Ljava/lang/String;

.field protected final mComponentName:Landroid/content/ComponentName;

.field protected final mUid:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    iget v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    iget v4, v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v0, "none"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
