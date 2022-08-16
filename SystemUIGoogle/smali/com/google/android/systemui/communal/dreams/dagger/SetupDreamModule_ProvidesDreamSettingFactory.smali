.class public final Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesDreamSettingFactory;
.super Ljava/lang/Object;
.source "SetupDreamModule_ProvidesDreamSettingFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesDreamSettingFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
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
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 0

    const-string/jumbo p0, "screensaver_components"

    return-object p0
.end method
