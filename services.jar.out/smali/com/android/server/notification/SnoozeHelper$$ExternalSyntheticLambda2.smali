.class public final synthetic Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/notification/SnoozeHelper$Inserter;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/util/TypedXmlSerializer;


# direct methods
.method public synthetic constructor <init>(JLandroid/util/TypedXmlSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda2;->f$0:J

    iput-object p3, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda2;->f$1:Landroid/util/TypedXmlSerializer;

    return-void
.end method


# virtual methods
.method public final insert(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda2;->f$0:J

    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda2;->f$1:Landroid/util/TypedXmlSerializer;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/notification/SnoozeHelper;->$r8$lambda$3Q-0j2rToL1UzpJhmm03oGbn3SA(JLandroid/util/TypedXmlSerializer;Ljava/lang/Long;)V

    return-void
.end method
