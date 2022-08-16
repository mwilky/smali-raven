.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DreamWeatherComplicationComponentImpl"
.end annotation


# instance fields
.field public provideComplicationViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public provideLayoutParamsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object p1, p1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    new-instance v0, Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent_DreamWeatherComplicationModule_ProvideComplicationViewFactory;

    invoke-direct {v0, p1}, Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent_DreamWeatherComplicationModule_ProvideComplicationViewFactory;-><init>(Ljavax/inject/Provider;)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;->provideComplicationViewProvider:Ljavax/inject/Provider;

    sget-object p1, Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent_DreamWeatherComplicationModule_ProvideLayoutParamsFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent_DreamWeatherComplicationModule_ProvideLayoutParamsFactory;

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;->provideLayoutParamsProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final getViewHolder()Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;->provideComplicationViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;->provideComplicationViewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->lockscreenSmartspaceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    new-instance v3, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;-><init>(Landroid/widget/TextView;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;->provideLayoutParamsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    new-instance v1, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;

    invoke-direct {v1, v0, v3, p0}, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;-><init>(Landroid/widget/TextView;Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;)V

    return-object v1
.end method
