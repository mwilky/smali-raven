.class public final synthetic Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController;

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController;->$r8$lambda$bl6IrGoioMd0sSxBx86XXbneEJY(Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController;Landroid/content/pm/LauncherActivityInfo;)Z

    move-result p0

    return p0
.end method
