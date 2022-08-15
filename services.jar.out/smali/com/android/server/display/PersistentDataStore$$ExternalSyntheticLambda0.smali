.class public final synthetic Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/PersistentDataStore;

.field public final synthetic f$1:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/PersistentDataStore;

    iput-object p2, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$1:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/PersistentDataStore;

    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$$ExternalSyntheticLambda0;->f$1:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, p0}, Lcom/android/server/display/PersistentDataStore;->$r8$lambda$H69Qr_J3Haoq4dQ-SWaLnHyCO-w(Lcom/android/server/display/PersistentDataStore;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
