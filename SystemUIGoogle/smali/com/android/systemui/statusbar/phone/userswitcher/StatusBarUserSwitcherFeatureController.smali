.class public final Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;
.super Ljava/lang/Object;
.source "StatusBarUserSwitcherFeatureController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/phone/userswitcher/OnUserSwitcherPreferenceChangeListener;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusBarUserSwitcherFeatureController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusBarUserSwitcherFeatureController.kt\ncom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1849#2,2:65\n*S KotlinDebug\n*F\n+ 1 StatusBarUserSwitcherFeatureController.kt\ncom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController\n*L\n55#1:65,2\n*E\n"
.end annotation


# instance fields
.field public final flags:Lcom/android/systemui/flags/FeatureFlags;

.field public final listeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->flags:Lcom/android/systemui/flags/FeatureFlags;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->listeners:Ljava/util/ArrayList;

    sget-object p0, Lcom/android/systemui/flags/Flags;->NEW_NOTIFICATION_PIPELINE_RENDERING:Lcom/android/systemui/flags/BooleanFlag;

    invoke-interface {p1}, Lcom/android/systemui/flags/FlagListenable;->addListener()V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/phone/userswitcher/OnUserSwitcherPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/userswitcher/OnUserSwitcherPreferenceChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->addCallback(Lcom/android/systemui/statusbar/phone/userswitcher/OnUserSwitcherPreferenceChangeListener;)V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/userswitcher/OnUserSwitcherPreferenceChangeListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
