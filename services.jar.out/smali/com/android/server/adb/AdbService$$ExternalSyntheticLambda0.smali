.class public final synthetic Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:B


# direct methods
.method public synthetic constructor <init>(ZB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$0:Z

    iput-byte p2, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$1:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$0:Z

    iget-byte p0, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$1:B

    check-cast p1, Landroid/debug/IAdbCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/adb/AdbService;->$r8$lambda$6HiBca-TqxXHcm3XkL2QiU4eobo(ZBLandroid/debug/IAdbCallback;)V

    return-void
.end method
