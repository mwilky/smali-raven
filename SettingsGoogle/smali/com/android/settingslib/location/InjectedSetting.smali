.class public Lcom/android/settingslib/location/InjectedSetting;
.super Ljava/lang/Object;
.source "InjectedSetting.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/InjectedSetting$Builder;
    }
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field public final iconId:I

.field public final mUserHandle:Landroid/os/UserHandle;

.field public final packageName:Ljava/lang/String;

.field public final settingsActivity:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final userRestriction:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/location/InjectedSetting$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settingslib/location/InjectedSetting$Builder;->-$$Nest$fgetmPackageName(Lcom/android/settingslib/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/location/InjectedSetting$Builder;->-$$Nest$fgetmClassName(Lcom/android/settingslib/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/location/InjectedSetting$Builder;->-$$Nest$fgetmTitle(Lcom/android/settingslib/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/location/InjectedSetting$Builder;->-$$Nest$fgetmIconId(Lcom/android/settingslib/location/InjectedSetting$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/location/InjectedSetting;->iconId:I

    invoke-static {p1}, Lcom/android/settingslib/location/InjectedSetting$Builder;->-$$Nest$fgetmUserHandle(Lcom/android/settingslib/location/InjectedSetting$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/settingslib/location/InjectedSetting$Builder;->-$$Nest$fgetmSettingsActivity(Lcom/android/settingslib/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/location/InjectedSetting$Builder;->-$$Nest$fgetmUserRestriction(Lcom/android/settingslib/location/InjectedSetting$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/location/InjectedSetting$Builder;Lcom/android/settingslib/location/InjectedSetting-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/location/InjectedSetting;-><init>(Lcom/android/settingslib/location/InjectedSetting$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/location/InjectedSetting;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/location/InjectedSetting;

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->className:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settingslib/location/InjectedSetting;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/android/settingslib/location/InjectedSetting;->iconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/settingslib/location/InjectedSetting;->iconId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InjectedSetting{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mClassName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/InjectedSetting;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", iconId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settingslib/location/InjectedSetting;->iconId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", settingsActivity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/InjectedSetting;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", userRestriction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
