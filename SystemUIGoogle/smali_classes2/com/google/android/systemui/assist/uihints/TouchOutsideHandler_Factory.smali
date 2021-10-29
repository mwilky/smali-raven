.class public final Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory;
.super Ljava/lang/Object;
.source "TouchOutsideHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory;
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory$InstanceHolder;->access$000()Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    invoke-direct {v0}, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;
    .locals 0

    invoke-static {}, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory;->newInstance()Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler_Factory;->get()Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    move-result-object p0

    return-object p0
.end method
