.class public final synthetic Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/twilight/TwilightListener;

.field public final synthetic f$1:Lcom/android/server/twilight/TwilightState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/twilight/TwilightListener;

    iput-object p2, p0, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/twilight/TwilightState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/twilight/TwilightListener;

    iget-object p0, p0, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/twilight/TwilightState;

    invoke-static {v0, p0}, Lcom/android/server/twilight/TwilightService;->$r8$lambda$d_eJhFu0Phzyq32TP9ZWD5dYNhs(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method
