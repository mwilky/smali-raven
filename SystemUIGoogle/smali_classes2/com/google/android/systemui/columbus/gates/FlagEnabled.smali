.class public final Lcom/google/android/systemui/columbus/gates/FlagEnabled;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "FlagEnabled.kt"


# instance fields
.field private columbusEnabled:Z

.field private final columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

.field private final settingsChangeListener:Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/FlagEnabled;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;

    return-void
.end method

.method public static final synthetic access$setColumbusEnabled$p(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusEnabled:Z

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/FlagEnabled;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->updateBlocking()V

    return-void
.end method

.method private final updateBlocking()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;->onColumbusEnabledChange(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusEnabled:Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->unregisterColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [columbusEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->columbusEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
