.class public final Lcom/android/systemui/controls/ControlsMetricsLoggerImpl_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "ControlsMetricsLoggerImpl_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ControlsMetricsLoggerImpl_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ControlsMetricsLoggerImpl_Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl_Factory;

    invoke-direct {v0}, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ControlsMetricsLoggerImpl_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/controls/ControlsMetricsLoggerImpl_Factory;

    return-void
.end method
