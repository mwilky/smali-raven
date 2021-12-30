.class public final synthetic Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p1}, Lcom/google/android/settings/gestures/columbus/ColumbusAppShortcutListPreferenceController;->$r8$lambda$2_zBViY3iVkMgBouCBJQQJdIAuU(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
