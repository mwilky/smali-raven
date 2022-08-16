.class public final synthetic Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$$ExternalSyntheticOutline3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static m(Ljava/util/ArrayList;Ljavax/inject/Provider;Ljava/util/List;Ljava/util/ArrayList;)Ldagger/internal/SetFactory;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ldagger/internal/SetFactory;

    invoke-direct {p0, p2, p3}, Ldagger/internal/SetFactory;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
