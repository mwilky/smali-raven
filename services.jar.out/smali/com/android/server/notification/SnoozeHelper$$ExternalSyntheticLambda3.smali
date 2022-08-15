.class public final synthetic Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/notification/SnoozeHelper$Inserter;


# instance fields
.field public final synthetic f$0:Landroid/util/TypedXmlSerializer;


# direct methods
.method public synthetic constructor <init>(Landroid/util/TypedXmlSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda3;->f$0:Landroid/util/TypedXmlSerializer;

    return-void
.end method


# virtual methods
.method public final insert(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda3;->f$0:Landroid/util/TypedXmlSerializer;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->$r8$lambda$koMFTLjD_L0rf2yxbsNpNRf1RM4(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V

    return-void
.end method
