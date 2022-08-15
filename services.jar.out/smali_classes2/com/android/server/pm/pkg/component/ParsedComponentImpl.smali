.class public abstract Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
.super Ljava/lang/Object;
.source "ParsedComponentImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedComponent;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# instance fields
.field public banner:I

.field public componentName:Landroid/content/ComponentName;

.field public descriptionRes:I

.field public flags:I

.field public icon:I

.field public intents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation
.end field

.field public labelRes:I

.field public logo:I

.field public mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field public metaData:Landroid/os/Bundle;

.field public name:Ljava/lang/String;

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->icon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->labelRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->logo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->banner:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->descriptionRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->flags:I

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/component/ParsedComponent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIcon()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->icon:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->labelRes:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->logo:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->banner:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->descriptionRes:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->flags:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    iget-object v1, v1, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getProperties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addIntent(Lcom/android/server/pm/pkg/component/ParsedIntentInfoImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    return-void
.end method

.method public addProperty(Landroid/content/pm/PackageManager$Property;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBanner()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->banner:I

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getDescriptionRes()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->descriptionRes:I

    return p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->flags:I

    return p0
.end method

.method public getIcon()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->icon:I

    return p0
.end method

.method public getIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLabelRes()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->labelRes:I

    return p0
.end method

.method public getLogo()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->logo:I

    return p0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    return-object p0
.end method

.method public setBanner(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->banner:I

    return-object p0
.end method

.method public setDescriptionRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->descriptionRes:I

    return-object p0
.end method

.method public setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->flags:I

    return-object p0
.end method

.method public setIcon(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->icon:I

    return-object p0
.end method

.method public setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->labelRes:I

    return-object p0
.end method

.method public setLogo(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->logo:I

    return-object p0
.end method

.method public setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getLabelRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getLogo()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getBanner()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getDescriptionRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->intents:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
