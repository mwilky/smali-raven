.class public final Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;
.super Ljava/lang/Object;
.source "NotifInflationErrorManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory$InstanceHolder;->access$000()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->newInstance()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager_Factory;->get()Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    move-result-object p0

    return-object p0
.end method
