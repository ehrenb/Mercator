.class public Lcm/aptoide/pt/v8engine/link/LinksHandlerFactory;
.super Ljava/lang/Object;
.source "LinksHandlerFactory.java"


# static fields
.field public static final APPLICATION_TYPE:I = 0x1

.field public static final CUSTOM_TABS_LINK_TYPE:I = 0x3

.field public static final YOUTUBE_TYPE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)Lcm/aptoide/pt/v8engine/link/Link;
    .locals 1

    .prologue
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 26
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    new-instance v0, Lcm/aptoide/pt/v8engine/link/CustomTabsLink;

    invoke-direct {v0, p2}, Lcm/aptoide/pt/v8engine/link/CustomTabsLink;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
