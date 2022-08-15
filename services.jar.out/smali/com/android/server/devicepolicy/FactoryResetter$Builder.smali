.class public final Lcom/android/server/devicepolicy/FactoryResetter$Builder;
.super Ljava/lang/Object;
.source "FactoryResetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/FactoryResetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mForce:Z

.field public mReason:Ljava/lang/String;

.field public mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field public mShutdown:Z

.field public mWipeAdoptableStorage:Z

.field public mWipeEuicc:Z

.field public mWipeFactoryResetProtection:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmForce(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mForce:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReason(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSafetyChecker(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/app/admin/DevicePolicySafetyChecker;
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShutdown(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mShutdown:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWipeAdoptableStorage(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeAdoptableStorage:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWipeEuicc(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeEuicc:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWipeFactoryResetProtection(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeFactoryResetProtection:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/FactoryResetter$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/devicepolicy/FactoryResetter;
    .locals 2

    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/FactoryResetter;-><init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;Lcom/android/server/devicepolicy/FactoryResetter-IA;)V

    return-object v0
.end method

.method public setForce(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mForce:Z

    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public setSafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    return-object p0
.end method

.method public setShutdown(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mShutdown:Z

    return-object p0
.end method

.method public setWipeAdoptableStorage(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeAdoptableStorage:Z

    return-object p0
.end method

.method public setWipeEuicc(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeEuicc:Z

    return-object p0
.end method

.method public setWipeFactoryResetProtection(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeFactoryResetProtection:Z

    return-object p0
.end method
