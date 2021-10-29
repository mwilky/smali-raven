.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory$InstanceHolder;->access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideAllowNotificationLongPress()Z
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideAllowNotificationLongPress()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;->provideAllowNotificationLongPress()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideAllowNotificationLongPressFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
