.class public Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
.super Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedActivityImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedActivity;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedActivityImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public colorMode:I

.field public configChanges:I

.field public documentLaunchMode:I

.field public launchMode:I

.field public lockTaskLaunchMode:I

.field public mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxAspectRatio:F

.field public maxRecents:I

.field public minAspectRatio:F

.field public parentActivityName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public persistableMode:I

.field public privateFlags:I

.field public requestedVrComponent:Ljava/lang/String;

.field public resizeMode:I

.field public rotationAnimation:I

.field public screenOrientation:I

.field public softInputMode:I

.field public supportsSizeChanges:Z

.field public targetActivity:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    iput v2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :cond_0
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-void
.end method

.method public static makeAlias(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 2

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTargetActivity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIcon()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setLogo(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setBanner(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setDescriptionRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    return-object v0
.end method

.method public static makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 2

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    const p0, 0x1030055

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    sget-object v1, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    iput-object p3, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result p2

    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    invoke-static {p1, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result p2

    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    const/4 p0, -0x1

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 p2, 0x4

    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result p0

    or-int/lit16 p0, p0, 0x200

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getColorMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    return p0
.end method

.method public getConfigChanges()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    return p0
.end method

.method public getDocumentLaunchMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    return p0
.end method

.method public getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getLaunchMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    return p0
.end method

.method public getLockTaskLaunchMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    return p0
.end method

.method public getMaxAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    return p0
.end method

.method public getMaxRecents()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    return p0
.end method

.method public getMinAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    return p0
.end method

.method public getParentActivityName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public getPersistableMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    return p0
.end method

.method public getPrivateFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    return p0
.end method

.method public getRequestedVrComponent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    return-object p0
.end method

.method public getResizeMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    return p0
.end method

.method public getRotationAnimation()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return p0
.end method

.method public getScreenOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    return p0
.end method

.method public getSoftInputMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    return p0
.end method

.method public getTargetActivity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public getTheme()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    return p0
.end method

.method public getUiOptions()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    return p0
.end method

.method public getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object p0
.end method

.method public isSupportsSizeChanges()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    return p0
.end method

.method public setColorMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    return-object p0
.end method

.method public setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    return-object p0
.end method

.method public setDocumentLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    return-object p0
.end method

.method public setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    return-object p0
.end method

.method public setLockTaskLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    return-object p0
.end method

.method public setMaxAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setMaxRecents(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    return-object p0
.end method

.method public setMinAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setParentActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public setPersistableMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    return-object p0
.end method

.method public setPrivateFlags(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    return-object p0
.end method

.method public setRequestedVrComponent(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    return-object p0
.end method

.method public setResizeMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    return-object p0
.end method

.method public setRotationAnimation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return-object p0
.end method

.method public setScreenOrientation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    return-object p0
.end method

.method public setSoftInputMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    return-object p0
.end method

.method public setSupportsSizeChanges(Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    return-object p0
.end method

.method public setTargetActivity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    return-object p0
.end method

.method public setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public setTheme(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    return-object p0
.end method

.method public setUiOptions(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    return-object p0
.end method

.method public setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Activity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    return-void
.end method
