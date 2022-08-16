.class public final Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;
.super Ljava/lang/Object;
.source "ColumbusServiceWrapper.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final columbusService:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;"
        }
    .end annotation
.end field

.field public final columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

.field public final columbusStructuredDataManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsAction:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsChangeListener:Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;

.field public started:Z


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusService:Ldagger/Lazy;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->settingsAction:Ldagger/Lazy;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusStructuredDataManager:Ldagger/Lazy;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->settingsChangeListener:Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->started:Z

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    :goto_0
    invoke-interface {p4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->started:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->columbusService:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
