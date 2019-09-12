`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2019 11:12:21
// Design Name: 
// Module Name: Sine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Sine(
    input [7:0] clk,
    input [1:0] sel, 
    input [1:0] enable,
    output reg [7:0] out
    );

wire [7:0] t;
counter_1(sel, clk, enable, t);

always @ (*)
   case(t)

0: out = 8'b1111_1111;
1: out = 8'b1111_1110;
2: out = 8'b1111_1110;
3: out = 8'b1111_1110;
4: out = 8'b1111_1110;
5: out = 8'b1111_1110;
6: out = 8'b1111_1101;
7: out = 8'b1111_1101;
8: out = 8'b1111_1100;
9: out = 8'b1111_1011;
10: out = 8'b1111_1011;
11: out = 8'b1111_1010;
12: out = 8'b1111_1001;
13: out = 8'b1111_1000;
14: out = 8'b1111_0111;
15: out = 8'b1111_0110;
16: out = 8'b1111_0101;
17: out = 8'b1111_0011;
18: out = 8'b1111_0010;
19: out = 8'b1111_0001;
20: out = 8'b1110_1111;
21: out = 8'b1110_1110;
22: out = 8'b1110_1100;
23: out = 8'b1110_1011;
24: out = 8'b1110_1001;
25: out = 8'b1110_0111;
26: out = 8'b1110_0101;
27: out = 8'b1110_0011;
28: out = 8'b1110_0001;
29: out = 8'b1101_1111;
30: out = 8'b1101_1101;
31: out = 8'b1101_1011;
32: out = 8'b1101_1001;
33: out = 8'b1101_0111;
34: out = 8'b1101_0100;
35: out = 8'b1101_0010;
36: out = 8'b1101_0000;
37: out = 8'b1100_1101;
38: out = 8'b1100_1011;
39: out = 8'b1100_1000;
40: out = 8'b1100_0101;
41: out = 8'b1100_0011;
42: out = 8'b1100_0000;
43: out = 8'b1011_1101;
44: out = 8'b1011_1011;
45: out = 8'b1011_1000;
46: out = 8'b1011_0101;
47: out = 8'b1011_0010;
48: out = 8'b1010_1111;
49: out = 8'b1010_1100;
50: out = 8'b1010_1001;
51: out = 8'b1010_0110;
52: out = 8'b1010_0011;
53: out = 8'b1010_0000;
54: out = 8'b1001_1101;
55: out = 8'b1001_1010;
56: out = 8'b1001_0111;
57: out = 8'b1001_0100;
58: out = 8'b1001_0001;
59: out = 8'b1000_1110;
60: out = 8'b1000_1011;
61: out = 8'b1000_1000;
62: out = 8'b1000_0100;
63: out = 8'b1000_0001;
64: out = 8'b0111_1110;
65: out = 8'b0111_1011;
66: out = 8'b0111_1000;
67: out = 8'b0111_0101;
68: out = 8'b0111_0010;
69: out = 8'b0110_1111;
70: out = 8'b0110_1011;
71: out = 8'b0110_1000;
72: out = 8'b0110_0101;
73: out = 8'b0110_0010;
74: out = 8'b0101_1111;
75: out = 8'b0101_1100;
76: out = 8'b0101_1001;
77: out = 8'b0101_0110;
78: out = 8'b0101_0011;
79: out = 8'b0101_0000;
80: out = 8'b0100_1101;
81: out = 8'b0100_1010;
82: out = 8'b0100_1000;
83: out = 8'b0100_0101;
84: out = 8'b0100_0010;
85: out = 8'b0011_1111;
86: out = 8'b0011_1101;
87: out = 8'b0011_1010;
88: out = 8'b0011_0111;
89: out = 8'b0011_0101;
90: out = 8'b0011_0010;
91: out = 8'b0011_0000;
92: out = 8'b0010_1101;
93: out = 8'b0010_1011;
94: out = 8'b0010_1001;
95: out = 8'b0010_0110;
96: out = 8'b0010_0100;
97: out = 8'b0010_0010;
98: out = 8'b0010_0000;
99: out = 8'b0001_1110;
100: out = 8'b0001_1100;
101: out = 8'b0001_1010;
102: out = 8'b0001_1000;
103: out = 8'b0001_0110;
104: out = 8'b0001_0100;
105: out = 8'b0001_0011;
106: out = 8'b0001_0001;
107: out = 8'b0000_1111;
108: out = 8'b0000_1110;
109: out = 8'b0000_1101;
110: out = 8'b0000_1011;
111: out = 8'b0000_1010;
112: out = 8'b0000_1001;
113: out = 8'b0000_1000;
114: out = 8'b0000_0110;
115: out = 8'b0000_0101;
116: out = 8'b0000_0101;
117: out = 8'b0000_0100;
118: out = 8'b0000_0011;
119: out = 8'b0000_0010;
120: out = 8'b0000_0010;
121: out = 8'b0000_0001;
122: out = 8'b0000_0001;
123: out = 8'b0000_0000;
124: out = 8'b0000_0000;
125: out = 8'b0000_0000;
126: out = 8'b0000_0000;
127: out = 8'b0000_0000;
128: out = 8'b0000_0000;
129: out = 8'b0000_0000;
130: out = 8'b0000_0000;
131: out = 8'b0000_0000;
132: out = 8'b0000_0000;
133: out = 8'b0000_0001;
134: out = 8'b0000_0001;
135: out = 8'b0000_0010;
136: out = 8'b0000_0010;
137: out = 8'b0000_0011;
138: out = 8'b0000_0100;
139: out = 8'b0000_0101;
140: out = 8'b0000_0101;
141: out = 8'b0000_0110;
142: out = 8'b0000_1000;
143: out = 8'b0000_1001;
144: out = 8'b0000_1010;
145: out = 8'b0000_1011;
146: out = 8'b0000_1101;
147: out = 8'b0000_1110;
148: out = 8'b0000_1111;
149: out = 8'b0001_0001;
150: out = 8'b0001_0011;
151: out = 8'b0001_0100;
152: out = 8'b0001_0110;
153: out = 8'b0001_1000;
154: out = 8'b0001_1010;
155: out = 8'b0001_1100;
156: out = 8'b0001_1110;
157: out = 8'b0010_0000;
158: out = 8'b0010_0010;
159: out = 8'b0010_0100;
160: out = 8'b0010_0110;
161: out = 8'b0010_1001;
162: out = 8'b0010_1011;
163: out = 8'b0010_1101;
164: out = 8'b0011_0000;
165: out = 8'b0011_0010;
166: out = 8'b0011_0101;
167: out = 8'b0011_0111;
168: out = 8'b0011_1010;
169: out = 8'b0011_1101;
170: out = 8'b0011_1111;
171: out = 8'b0100_0010;
172: out = 8'b0100_0101;
173: out = 8'b0100_1000;
174: out = 8'b0100_1010;
175: out = 8'b0100_1101;
176: out = 8'b0101_0000;
177: out = 8'b0101_0011;
178: out = 8'b0101_0110;
179: out = 8'b0101_1001;
180: out = 8'b0101_1100;
181: out = 8'b0101_1111;
182: out = 8'b0110_0010;
183: out = 8'b0110_0101;
184: out = 8'b0110_1000;
185: out = 8'b0110_1011;
186: out = 8'b0110_1111;
187: out = 8'b0111_0010;
188: out = 8'b0111_0101;
189: out = 8'b0111_1000;
190: out = 8'b0111_1011;
191: out = 8'b0111_1110;
192: out = 8'b1000_0001;
193: out = 8'b1000_0100;
194: out = 8'b1000_1000;
195: out = 8'b1000_1011;
196: out = 8'b1000_1110;
197: out = 8'b1001_0001;
198: out = 8'b1001_0100;
199: out = 8'b1001_0111;
200: out = 8'b1001_1010;
201: out = 8'b1001_1101;
202: out = 8'b1010_0000;
203: out = 8'b1010_0011;
204: out = 8'b1010_0110;
205: out = 8'b1010_1001;
206: out = 8'b1010_1100;
207: out = 8'b1010_1111;
208: out = 8'b1011_0010;
209: out = 8'b1011_0101;
210: out = 8'b1011_1000;
211: out = 8'b1011_1011;
212: out = 8'b1011_1101;
213: out = 8'b1100_0000;
214: out = 8'b1100_0011;
215: out = 8'b1100_0101;
216: out = 8'b1100_1000;
217: out = 8'b1100_1011;
218: out = 8'b1100_1101;
219: out = 8'b1101_0000;
220: out = 8'b1101_0010;
221: out = 8'b1101_0100;
222: out = 8'b1101_0111;
223: out = 8'b1101_1001;
224: out = 8'b1101_1011;
225: out = 8'b1101_1101;
226: out = 8'b1101_1111;
227: out = 8'b1110_0001;
228: out = 8'b1110_0011;
229: out = 8'b1110_0101;
230: out = 8'b1110_0111;
231: out = 8'b1110_1001;
232: out = 8'b1110_1011;
233: out = 8'b1110_1100;
234: out = 8'b1110_1110;
235: out = 8'b1110_1111;
236: out = 8'b1111_0001;
237: out = 8'b1111_0010;
238: out = 8'b1111_0011;
239: out = 8'b1111_0101;
240: out = 8'b1111_0110;
241: out = 8'b1111_0111;
242: out = 8'b1111_1000;
243: out = 8'b1111_1001;
244: out = 8'b1111_1010;
245: out = 8'b1111_1011;
246: out = 8'b1111_1011;
247: out = 8'b1111_1100;
248: out = 8'b1111_1101;
249: out = 8'b1111_1101;
250: out = 8'b1111_1110;
251: out = 8'b1111_1110;
252: out = 8'b1111_1110;
253: out = 8'b1111_1110;
254: out = 8'b1111_1110;
255: out = 8'b1111_1111;
default: out = 8'b0000_0000;

endcase

endmodule
