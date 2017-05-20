.class public final enum Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;
.super Ljava/lang/Enum;
.source "PaymentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

.field public static final enum APPROVING:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

.field public static final enum REGISTER:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

.field public static final enum USE:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->REGISTER:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    .line 105
    new-instance v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    const-string v1, "APPROVING"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->APPROVING:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    .line 106
    new-instance v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    const-string v1, "USE"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->USE:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    sget-object v1, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->REGISTER:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->APPROVING:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->USE:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->$VALUES:[Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->$VALUES:[Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    return-object v0
.end method
