.class public final enum Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;
.super Ljava/lang/Enum;
.source "AppBarStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

.field public static final enum COLLAPSED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

.field public static final enum EXPANDED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

.field public static final enum IDLE:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->EXPANDED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    .line 40
    new-instance v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->COLLAPSED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    .line 41
    new-instance v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->IDLE:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    sget-object v1, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->EXPANDED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->COLLAPSED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->IDLE:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->$VALUES:[Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->$VALUES:[Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    return-object v0
.end method
