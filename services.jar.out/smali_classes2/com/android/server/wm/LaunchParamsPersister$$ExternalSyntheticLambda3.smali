.class public final synthetic Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister;->$r8$lambda$qFa64I0NmhmHZjNuQ-iK3i1w-QY(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method
