.class final Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "GlobalModule_ProvideIsTestHarnessFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/GlobalModule_ProvideIsTestHarnessFactory;

    return-object v0
.end method
