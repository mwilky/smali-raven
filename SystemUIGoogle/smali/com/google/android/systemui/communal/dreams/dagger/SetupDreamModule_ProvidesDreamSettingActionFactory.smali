.class public final Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesDreamSettingActionFactory;
.super Ljava/lang/Object;
.source "SetupDreamModule_ProvidesDreamSettingActionFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesDreamSettingActionFactory$InstanceHolder;
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

    const-string p0, "com.google.android.systemui.communal.dock.callbacks.NudgeToSetupDreamCallback.NUDGE_CLICKED"

    return-object p0
.end method
