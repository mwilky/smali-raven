.class final Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SystemUIDefaultModule_ProvideLeakReportEmailFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/SystemUIDefaultModule_ProvideLeakReportEmailFactory;

    return-object v0
.end method
