.class public Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
.super Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedProviderImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedProvider;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedProviderImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public authority:Ljava/lang/String;

.field public forceUriPermissions:Z

.field public grantUriPermissions:Z

.field public initOrder:I

.field public multiProcess:Z

.field public pathPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end field

.field public readPermission:Ljava/lang/String;

.field public syncable:Z

.field public uriPermissionPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public writePermission:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/component/ParsedProvider;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-object p0
.end method

.method public addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public getInitOrder()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    return p0
.end method

.method public getPathPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getReadPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getUriPermissionPatterns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    return-object p0
.end method

.method public getWritePermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    return-object p0
.end method

.method public isForceUriPermissions()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    return p0
.end method

.method public isGrantUriPermissions()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    return p0
.end method

.method public isMultiProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    return p0
.end method

.method public isSyncable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    return p0
.end method

.method public setAuthority(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public setForceUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    return-object p0
.end method

.method public setGrantUriPermissions(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    return-object p0
.end method

.method public setInitOrder(I)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    return-object p0
.end method

.method public setMultiProcess(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    return-object p0
.end method

.method public setReadPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
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
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    return-object p0
.end method

.method public setSyncable(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    return-object p0
.end method

.method public setWritePermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
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
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Provider{"

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

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return-void
.end method
