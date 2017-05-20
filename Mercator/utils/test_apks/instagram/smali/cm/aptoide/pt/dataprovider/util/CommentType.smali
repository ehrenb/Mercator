.class public final enum Lcm/aptoide/pt/dataprovider/util/CommentType;
.super Ljava/lang/Enum;
.source "CommentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/dataprovider/util/CommentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/dataprovider/util/CommentType;

.field public static final enum REVIEW:Lcm/aptoide/pt/dataprovider/util/CommentType;

.field public static final enum STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

.field public static final enum TIMELINE:Lcm/aptoide/pt/dataprovider/util/CommentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcm/aptoide/pt/dataprovider/util/CommentType;

    const-string v1, "REVIEW"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/util/CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->REVIEW:Lcm/aptoide/pt/dataprovider/util/CommentType;

    new-instance v0, Lcm/aptoide/pt/dataprovider/util/CommentType;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/dataprovider/util/CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    new-instance v0, Lcm/aptoide/pt/dataprovider/util/CommentType;

    const-string v1, "TIMELINE"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/dataprovider/util/CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->TIMELINE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/pt/dataprovider/util/CommentType;

    sget-object v1, Lcm/aptoide/pt/dataprovider/util/CommentType;->REVIEW:Lcm/aptoide/pt/dataprovider/util/CommentType;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/dataprovider/util/CommentType;->STORE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/dataprovider/util/CommentType;->TIMELINE:Lcm/aptoide/pt/dataprovider/util/CommentType;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->$VALUES:[Lcm/aptoide/pt/dataprovider/util/CommentType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/util/CommentType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/util/CommentType;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/dataprovider/util/CommentType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcm/aptoide/pt/dataprovider/util/CommentType;->$VALUES:[Lcm/aptoide/pt/dataprovider/util/CommentType;

    invoke-virtual {v0}, [Lcm/aptoide/pt/dataprovider/util/CommentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/dataprovider/util/CommentType;

    return-object v0
.end method
