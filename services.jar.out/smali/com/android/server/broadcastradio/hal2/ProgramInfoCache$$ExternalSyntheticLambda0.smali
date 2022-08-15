.class public final synthetic Lcom/android/server/broadcastradio/hal2/ProgramInfoCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    check-cast p2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->$r8$lambda$AFY1vEhIFnJI_6nusSZ8Cz3Q87I(Ljava/lang/StringBuilder;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method
