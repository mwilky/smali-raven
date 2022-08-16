.class public final synthetic Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;
    .locals 1

    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object p0

    return-object p0
.end method
