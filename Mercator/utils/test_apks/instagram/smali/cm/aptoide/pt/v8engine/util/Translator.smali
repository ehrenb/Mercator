.class public Lcm/aptoide/pt/v8engine/util/Translator;
.super Ljava/lang/Object;
.source "Translator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 278
    :goto_0
    return-object p0

    .line 17
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 19
    :pswitch_0
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->home_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 17
    :sswitch_0
    const-string v3, "Home"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "Updates"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v3, "Stores"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "Downloads"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "Community"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "Apps Timeline"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "Latest Reviews"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "Latest Comments"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "Applications"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v3, "Games"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v3, "Highlighted"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string v3, "Trending"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "Local Top Apps"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "Top Stores"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "Top Games"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "Reviews"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "News & Weather"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "Productivity"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "News & Magazines"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "Reference"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "Shopping"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "Social"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "Business"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "Sports"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "Themes"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "Tools"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "Travel"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "Software Libraries"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "Demo"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "Comics"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "Music & Audio"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "Weather"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "Photography"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "Communication"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "Personalization"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "Travel & Local"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "Transportation"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "Medical"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "Entertainment"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "Finance"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "Health"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "Libraries & Demo"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "Books & Reference"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "Lifestyle"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "Transport"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "Health & Fitness"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "Media & Video"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "Multimedia"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "Education"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "All"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "Puzzle"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "Casino"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "Action"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "Strategy"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "Family"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "Simulation"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "Adventure"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "Word"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "Arcade"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "Arcade & Action"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_3c
    const-string v3, "Trivia"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_3d
    const-string v3, "Card"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_3e
    const-string v3, "Role Playing"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_3f
    const-string v3, "Educational"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_40
    const-string v3, "Music"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_41
    const-string v3, "Board"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_42
    const-string v3, "Brain & Puzzle"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_43
    const-string v3, "Cards & Casino"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_44
    const-string v3, "Casual"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_45
    const-string v3, "Sports Games"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_46
    const-string v3, "Racing"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_47
    const-string v3, "Top Apps"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_48
    const-string v3, "Latest Apps"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_49
    const-string v3, "Latest Applications"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_4a
    const-string v3, "Top Apps in this store"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_4b
    const-string v3, "Apps for Kids"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_4c
    const-string v3, "Aptoide Publishers"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_4d
    const-string v3, "Music & Video"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_4e
    const-string v3, "Essential Apps"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_4f
    const-string v3, "Summer Apps"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_50
    const-string v3, "Play-it!"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_51
    const-string v3, "More Editors Choice"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_52
    const-string v3, "More Editor\'s Choice"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_53
    const-string v3, "More Editors\' Choice"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_54
    const-string v3, "Comments in this store"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0x54

    goto/16 :goto_1

    .line 22
    :pswitch_1
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->updates:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 25
    :pswitch_2
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->stores:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 28
    :pswitch_3
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->downloads:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 31
    :pswitch_4
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->community:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 34
    :pswitch_5
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->apps_timeline:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 37
    :pswitch_6
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->latest_reviews:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 40
    :pswitch_7
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->latest_comments:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 43
    :pswitch_8
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->applications:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 46
    :pswitch_9
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->games:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 49
    :pswitch_a
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->highlighted:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 52
    :pswitch_b
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->trending:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 55
    :pswitch_c
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->local_top_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 58
    :pswitch_d
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->top_stores_fragment_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 61
    :pswitch_e
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->top_games:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 64
    :pswitch_f
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->reviews:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 67
    :pswitch_10
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->news_weather:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 70
    :pswitch_11
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->productivity:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 73
    :pswitch_12
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->news_magazines:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 76
    :pswitch_13
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->reference:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 79
    :pswitch_14
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->shopping:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 82
    :pswitch_15
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->social:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 85
    :pswitch_16
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->business:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 88
    :pswitch_17
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->sports:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 91
    :pswitch_18
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->themes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 94
    :pswitch_19
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->tools:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 97
    :pswitch_1a
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->travel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 100
    :pswitch_1b
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->software_libraries:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 103
    :pswitch_1c
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->demo:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 106
    :pswitch_1d
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->comics:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 109
    :pswitch_1e
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->music_audio:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 112
    :pswitch_1f
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->weather:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 115
    :pswitch_20
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->photography:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 118
    :pswitch_21
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->communication:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 121
    :pswitch_22
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->personalization:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 124
    :pswitch_23
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->travel_local:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 127
    :pswitch_24
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->transportation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 130
    :pswitch_25
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->medical:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 133
    :pswitch_26
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->entertainment:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 136
    :pswitch_27
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->finance:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 139
    :pswitch_28
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->health:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 142
    :pswitch_29
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->libraries_demo:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 145
    :pswitch_2a
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->books_reference:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 148
    :pswitch_2b
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->lifestyle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 151
    :pswitch_2c
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->transport:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 154
    :pswitch_2d
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->health_fitness:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 157
    :pswitch_2e
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->media_video:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 160
    :pswitch_2f
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->multimedia:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 163
    :pswitch_30
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->education:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 166
    :pswitch_31
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->all:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 169
    :pswitch_32
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->puzzle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 172
    :pswitch_33
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->casino:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 175
    :pswitch_34
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->action:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 178
    :pswitch_35
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->strategy:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 181
    :pswitch_36
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->family:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 184
    :pswitch_37
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->simulation:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 187
    :pswitch_38
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->adventure:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 190
    :pswitch_39
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->word:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 193
    :pswitch_3a
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->arcade:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 196
    :pswitch_3b
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->arcade_action:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 199
    :pswitch_3c
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->trivia:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 202
    :pswitch_3d
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->card:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 205
    :pswitch_3e
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->role_playing:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 208
    :pswitch_3f
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->educational:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 211
    :pswitch_40
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->music:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 214
    :pswitch_41
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->board:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 217
    :pswitch_42
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->brain_puzzle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 220
    :pswitch_43
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->cards_casino:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 223
    :pswitch_44
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->casual:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 226
    :pswitch_45
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->sports_games:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 229
    :pswitch_46
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->racing:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 232
    :pswitch_47
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->top_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 235
    :pswitch_48
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->latest_applications:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 238
    :pswitch_49
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->latest_applications:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 241
    :pswitch_4a
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->top_apps_in_store:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 244
    :pswitch_4b
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->apps_for_kids:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 247
    :pswitch_4c
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->aptoide_publishers:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 248
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 247
    invoke-static {v0, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 251
    :pswitch_4d
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->music_video:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 254
    :pswitch_4e
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->essential_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 257
    :pswitch_4f
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->summer_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 260
    :pswitch_50
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->play_it:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 263
    :pswitch_51
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->more_editors_choice:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 266
    :pswitch_52
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->more_editors_choice:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 269
    :pswitch_53
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->more_editors_choice:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 272
    :pswitch_54
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->comment_store_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 17
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f661184 -> :sswitch_28
        -0x7adddc5e -> :sswitch_42
        -0x70d243a2 -> :sswitch_32
        -0x6e8d1c92 -> :sswitch_46
        -0x6c12fc73 -> :sswitch_15
        -0x6bff4c61 -> :sswitch_17
        -0x6bc6f02e -> :sswitch_2
        -0x6ac9cb13 -> :sswitch_10
        -0x6abfd016 -> :sswitch_18
        -0x6a3494c6 -> :sswitch_1a
        -0x6a30f15d -> :sswitch_3c
        -0x65ead55a -> :sswitch_51
        -0x64b44d8f -> :sswitch_25
        -0x5b377405 -> :sswitch_f
        -0x5ae16920 -> :sswitch_45
        -0x53db302c -> :sswitch_1f
        -0x49cae8f7 -> :sswitch_2c
        -0x425bafdf -> :sswitch_1e
        -0x42558d29 -> :sswitch_4c
        -0x4139373a -> :sswitch_4d
        -0x4080dc20 -> :sswitch_16
        -0x3ffe97bc -> :sswitch_4e
        -0x3df42d95 -> :sswitch_2f
        -0x3a4f9735 -> :sswitch_3
        -0x3948a163 -> :sswitch_47
        -0x38f29e83 -> :sswitch_20
        -0x357d84d6 -> :sswitch_2d
        -0x2bbb95e8 -> :sswitch_12
        -0x2a00fd7c -> :sswitch_3e
        -0x28bc7a63 -> :sswitch_52
        -0x273c1274 -> :sswitch_43
        -0x22864ae4 -> :sswitch_49
        -0x21fe0415 -> :sswitch_23
        -0x2155e1d1 -> :sswitch_5
        -0x1505f3bd -> :sswitch_4f
        -0x13f831fc -> :sswitch_22
        -0x10adaa78 -> :sswitch_14
        -0xe16004a -> :sswitch_21
        -0xd82eabc -> :sswitch_29
        -0x9a094e5 -> :sswitch_2a
        -0x8611bcd -> :sswitch_a
        0x10181 -> :sswitch_31
        0x1fef30 -> :sswitch_3d
        0x207203 -> :sswitch_1c
        0x2268ff -> :sswitch_0
        0x293b2a -> :sswitch_39
        0x3d5fec6 -> :sswitch_41
        0x41642a1 -> :sswitch_9
        0x473fe05 -> :sswitch_40
        0x4bb27b5 -> :sswitch_53
        0x4d3d9bb -> :sswitch_19
        0x6a46f60 -> :sswitch_1b
        0x108223f6 -> :sswitch_e
        0x1549591d -> :sswitch_d
        0x1c1ac080 -> :sswitch_3b
        0x1f374fc9 -> :sswitch_4
        0x29d30227 -> :sswitch_37
        0x2a5fc1ae -> :sswitch_54
        0x305ce7ba -> :sswitch_27
        0x35250c82 -> :sswitch_6
        0x374a218c -> :sswitch_24
        0x3b4353d2 -> :sswitch_c
        0x404d5f2b -> :sswitch_13
        0x41a7f943 -> :sswitch_8
        0x46d224f2 -> :sswitch_11
        0x4d6caf68 -> :sswitch_26
        0x4e1316f0 -> :sswitch_38
        0x54d9d1b3 -> :sswitch_3f
        0x553f78aa -> :sswitch_1
        0x56ffb945 -> :sswitch_b
        0x5b25d26d -> :sswitch_7
        0x61bd1b85 -> :sswitch_2e
        0x661d8788 -> :sswitch_30
        0x664c8c15 -> :sswitch_2b
        0x6a6fba77 -> :sswitch_4a
        0x6e6a0793 -> :sswitch_35
        0x6e918d52 -> :sswitch_4b
        0x73c4425d -> :sswitch_50
        0x74946a56 -> :sswitch_34
        0x755ff130 -> :sswitch_3a
        0x77e17815 -> :sswitch_33
        0x77e1a38b -> :sswitch_44
        0x78a40598 -> :sswitch_1d
        0x79d2e36b -> :sswitch_48
        0x7cfd4784 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
    .end packed-switch
.end method

.method public static translateToMultiple(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    const/4 v0, 0x0

    .line 285
    if-nez p0, :cond_0

    .line 303
    :goto_0
    return-object v0

    .line 289
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 293
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcm/aptoide/pt/v8engine/R$string;->install_app_outter_pt1:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 294
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->install_app_outter_pt2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 295
    const/4 v1, 0x2

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->install_app_inner:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 296
    const/4 v1, 0x3

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->open_app_inner:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 289
    :sswitch_0
    const-string v4, "Your store doesn\'t have any applications yet. Install Aptoide Uploader and upload apps to share them with the world!"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v4, "Your store does not have any applications yet. Install Aptoide Uploader and upload apps to share them with the world!"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6e0dcd0a -> :sswitch_1
        0x7183c6b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
