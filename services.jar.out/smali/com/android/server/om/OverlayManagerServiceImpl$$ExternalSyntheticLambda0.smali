.class public final synthetic Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    check-cast p1, Landroid/content/om/OverlayInfo;

    invoke-static {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->$r8$lambda$_8ENp_cbk3eooiguV6y_5dFg4XQ(Landroid/util/ArrayMap;Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method
