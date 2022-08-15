.class public final synthetic Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;->f$2:J

    iput-object p5, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;->f$3:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;->f$2:J

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener$$ExternalSyntheticLambda5;->f$3:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->$r8$lambda$us6RK6Ujt_2jFHX5obOq3R4BfC4(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method
