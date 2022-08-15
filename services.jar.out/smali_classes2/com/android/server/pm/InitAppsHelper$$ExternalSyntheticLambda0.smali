.class public final synthetic Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/content/om/OverlayConfig$PackageProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InitAppsHelper;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InitAppsHelper;

    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final forEachPackage(Lcom/android/internal/util/function/TriConsumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InitAppsHelper;

    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/InitAppsHelper;->$r8$lambda$jdmghGNPbGomudqDIE39M_OvlOc(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;Lcom/android/internal/util/function/TriConsumer;)V

    return-void
.end method
