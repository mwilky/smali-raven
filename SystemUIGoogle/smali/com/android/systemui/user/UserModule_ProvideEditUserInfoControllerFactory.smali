.class public final Lcom/android/systemui/user/UserModule_ProvideEditUserInfoControllerFactory;
.super Ljava/lang/Object;
.source "UserModule_ProvideEditUserInfoControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/user/UserModule_ProvideEditUserInfoControllerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/settingslib/users/EditUserInfoController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/settingslib/users/EditUserInfoController;

    invoke-direct {p0}, Lcom/android/settingslib/users/EditUserInfoController;-><init>()V

    return-object p0
.end method
