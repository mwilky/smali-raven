.class public Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;
.super Ljava/lang/Object;
.source "ParsedApexSystemServiceImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedApexSystemService;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static sParcellingForJarPath:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sParcellingForName:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public initOrder:I

.field public jarPath:Ljava/lang/String;

.field public maxSdkVersion:Ljava/lang/String;

.field public minSdkVersion:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    :cond_0
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    :cond_1
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    :cond_2
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    :cond_3
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    invoke-interface {v0, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    invoke-interface {v1, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    invoke-interface {v2, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    invoke-interface {v3, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    const-class v4, Landroid/annotation/NonNull;

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInitOrder()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    return p0
.end method

.method public getJarPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getMinSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setInitOrder(I)Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    return-object p0
.end method

.method public setJarPath(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxSdkVersion(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setMinSdkVersion(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;
    .locals 2

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForJarPath:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->jarPath:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMinSdkVersion:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->minSdkVersion:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->sParcellingForMaxSdkVersion:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->maxSdkVersion:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->initOrder:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
