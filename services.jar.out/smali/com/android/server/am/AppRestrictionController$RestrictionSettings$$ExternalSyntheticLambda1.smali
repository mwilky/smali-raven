.class public final synthetic Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->$r8$lambda$gDxxbRfkcs4k_MOGW2Iy-aH9_lI(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V

    return-void
.end method
