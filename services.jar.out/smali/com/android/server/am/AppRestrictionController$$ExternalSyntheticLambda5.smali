.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppRestrictionController;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/usage/AppStandbyInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/AppRestrictionController;

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/usage/AppStandbyInternal;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$2:Z

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/usage/AppStandbyInternal;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/am/AppRestrictionController;->$r8$lambda$OW1IprpCpg1pLOMOsBN0vCspEJY(Lcom/android/server/am/AppRestrictionController;Ljava/util/ArrayList;ZLcom/android/server/usage/AppStandbyInternal;Ljava/lang/Integer;)V

    return-void
.end method
