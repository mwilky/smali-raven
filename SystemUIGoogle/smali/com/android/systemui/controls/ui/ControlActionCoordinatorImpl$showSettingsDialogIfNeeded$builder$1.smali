.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showSettingsDialogIfNeeded$builder$1;
.super Ljava/lang/Object;
.source "ControlActionCoordinatorImpl.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->showSettingsDialogIfNeeded(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $attempts:I

.field public final synthetic $prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(ILandroid/content/SharedPreferences;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showSettingsDialogIfNeeded$builder$1;->$attempts:I

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showSettingsDialogIfNeeded$builder$1;->$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showSettingsDialogIfNeeded$builder$1;->$attempts:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showSettingsDialogIfNeeded$builder$1;->$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showSettingsDialogIfNeeded$builder$1;->$attempts:I

    add-int/lit8 p0, p0, 0x1

    const-string/jumbo v0, "show_settings_attempts"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
